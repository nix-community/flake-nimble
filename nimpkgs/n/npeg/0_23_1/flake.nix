{
  description = ''PEG (Parsing Expression Grammars) string matching library for Nim'';
  inputs.src-npeg-0_23_1.flake = false;
  inputs.src-npeg-0_23_1.type = "github";
  inputs.src-npeg-0_23_1.owner = "zevv";
  inputs.src-npeg-0_23_1.repo = "npeg";
  inputs.src-npeg-0_23_1.ref = "refs/tags/0.23.1";
  
  outputs = { self, nixpkgs, src-npeg-0_23_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-npeg-0_23_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-npeg-0_23_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}