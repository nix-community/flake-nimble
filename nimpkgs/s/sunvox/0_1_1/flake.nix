{
  description = ''Bindings for SunVox modular synthesizer'';
  inputs.src-sunvox-0_1_1.flake = false;
  inputs.src-sunvox-0_1_1.type = "github";
  inputs.src-sunvox-0_1_1.owner = "exelotl";
  inputs.src-sunvox-0_1_1.repo = "nim-sunvox";
  inputs.src-sunvox-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-sunvox-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sunvox-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sunvox-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}