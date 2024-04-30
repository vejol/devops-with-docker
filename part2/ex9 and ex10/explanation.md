# What did I need to do?

Setup was quite straight-forward. I changed frontend's REACT_APP_BACKEND_URL environment variable to have value http://localhost:80/api/ because nginx was listening on port 80 and forwarding requests from /api/ to backend.

You will find Dockerfiles from folders ./backend and ./frontend.
