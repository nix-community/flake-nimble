{
  description = ''Implementation of XML DOM Level 2 Core specification (http://www.w3.org/TR/2000/REC-DOM-Level-2-Core-20001113/core.html)'';
  
  
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}