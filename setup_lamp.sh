def install(service):
    if service == "apache":
        print("Installing Apache")
    elif service == "mysql":
        print("Installing MySQL")
    else:
        print("Installing PHP")

install("apache")
install("mysql")
install("php")
