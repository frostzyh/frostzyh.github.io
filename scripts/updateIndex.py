import os

def ui(path):
    with open(path+'/index.md', 'w') as f:
        path = path + '/files'
        for name in os.listdir(path):
            subpath = os.path.join(path, name)
            if os.path.isdir(subpath):
                f.write('### ' + name + '\n')
                name = 'files/' + name
                for subname in os.listdir(subpath):
                    f.write('* [' + subname + '](./' + os.path.join(name, subname) + ')\n')
                f.write('\n')
