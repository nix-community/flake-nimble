{
  description = ''PEG (Parsing Expression Grammars) string matching library for Nim'';
  inputs.src-npeg-0_21_2.flake = false;
  inputs.src-npeg-0_21_2.type = "github";
  inputs.src-npeg-0_21_2.owner = "zevv";
  inputs.src-npeg-0_21_2.repo = "npeg";
  inputs.src-npeg-0_21_2.ref = "refs/tags/0.21.2";
  
  outputs = { self, nixpkgs, src-npeg-0_21_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-npeg-0_21_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-npeg-0_21_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}