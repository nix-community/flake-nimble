{
  description = ''A library that will add useful tools to Nim's arsenal.'';
  inputs.src-extensions-0_2_0.flake = false;
  inputs.src-extensions-0_2_0.type = "github";
  inputs.src-extensions-0_2_0.owner = "jyapayne";
  inputs.src-extensions-0_2_0.repo = "nim-extensions";
  inputs.src-extensions-0_2_0.ref = "refs/tags/0.2.0";
  
  outputs = { self, nixpkgs, src-extensions-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-extensions-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-extensions-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}