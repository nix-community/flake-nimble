{
  description = ''Pure Nim XML parser'';
  inputs.src-xml-master.flake = false;
  inputs.src-xml-master.type = "github";
  inputs.src-xml-master.owner = "ba0f3";
  inputs.src-xml-master.repo = "xml.nim";
  inputs.src-xml-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-xml-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xml-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xml-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}