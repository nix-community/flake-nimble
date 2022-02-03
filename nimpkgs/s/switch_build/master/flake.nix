{
  description = ''An easy way to build homebrew files for the Nintendo Switch'';
  inputs.src-switch_build-master.flake = false;
  inputs.src-switch_build-master.type = "github";
  inputs.src-switch_build-master.owner = "jyapayne";
  inputs.src-switch_build-master.repo = "switch-build";
  inputs.src-switch_build-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-switch_build-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-switch_build-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-switch_build-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}