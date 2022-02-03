{
  description = ''Obsolete - please use egl instead!'';
  inputs.src-io-egl-master.flake = false;
  inputs.src-io-egl-master.type = "github";
  inputs.src-io-egl-master.owner = "nimious";
  inputs.src-io-egl-master.repo = "io-egl";
  inputs.src-io-egl-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-io-egl-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-io-egl-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-io-egl-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}