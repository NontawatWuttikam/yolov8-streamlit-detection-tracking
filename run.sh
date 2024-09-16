#!/bin/bash
streamlit run app.py --server.port 30025&
source .env
echo $SSH_SERVER_USERNAME
echo $SSH_SERVER_IP
./ssh-tunnel.sh $SSH_SERVER_USERNAME $SSH_SERVER_IP