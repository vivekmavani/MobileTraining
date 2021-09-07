void main() {
  var list = [1,2,3,4,5,6,7,8,9];
 print(sum(list));
 printError(NetworkError.badUrl);
}

enum NetworkError{
  badUrl,
  timeout,
  resourcenotavailable
}

void printError(NetworkError error)
{
  switch(error){
    case NetworkError.badUrl:
    print("badUrl");
    break;
     case NetworkError.timeout:
    print("timeout");
    break;
     case NetworkError.resourcenotavailable:
    print("resourcenotavailable");
    break;
  }
}

int sum(List<int> l) => l.fold(0,(result,l) => result + l);