def install(name):
    if name == "mysql":
        print("Installing MySQL")
    elif name == "apache":
        print("Installing Apache")
    else:
        print("Invalid")

install("mysql")
