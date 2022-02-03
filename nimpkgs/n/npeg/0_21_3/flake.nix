{
  description = ''PEG (Parsing Expression Grammars) string matching library for Nim'';
  inputs.src-npeg-0_21_3.flake = false;
  inputs.src-npeg-0_21_3.type = "github";
  inputs.src-npeg-0_21_3.owner = "zevv";
  inputs.src-npeg-0_21_3.repo = "npeg";
  inputs.src-npeg-0_21_3.ref = "refs/tags/0.21.3";
  
  outputs = { self, nixpkgs, src-npeg-0_21_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-npeg-0_21_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-npeg-0_21_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}