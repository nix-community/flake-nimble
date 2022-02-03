{
  description = ''Bindings for SunVox modular synthesizer'';
  inputs.src-sunvox-master.flake = false;
  inputs.src-sunvox-master.type = "github";
  inputs.src-sunvox-master.owner = "exelotl";
  inputs.src-sunvox-master.repo = "nim-sunvox";
  inputs.src-sunvox-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sunvox-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sunvox-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sunvox-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}