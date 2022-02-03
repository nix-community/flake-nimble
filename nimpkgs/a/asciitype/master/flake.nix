{
  description = ''This module performs character tests.'';
  inputs.src-asciitype-master.flake = false;
  inputs.src-asciitype-master.type = "github";
  inputs.src-asciitype-master.owner = "chocobo333";
  inputs.src-asciitype-master.repo = "asciitype";
  inputs.src-asciitype-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-asciitype-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asciitype-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-asciitype-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}