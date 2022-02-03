{
  description = ''PEG (Parsing Expression Grammars) string matching library for Nim'';
  inputs.src-npeg-master.flake = false;
  inputs.src-npeg-master.type = "github";
  inputs.src-npeg-master.owner = "zevv";
  inputs.src-npeg-master.repo = "npeg";
  inputs.src-npeg-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-npeg-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-npeg-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-npeg-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}