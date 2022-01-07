{
  description = ''
    deque implementatoin using DoublyLinkedRing
  '';
  inputs.src-ringDeque.url = "https://github.com/technicallyagd/ringDeque";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
