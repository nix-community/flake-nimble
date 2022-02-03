{
  description = ''Bindings to libopusenc'';
  inputs.src-opusenc-master.flake = false;
  inputs.src-opusenc-master.type = "other";
  inputs.src-opusenc-master.owner = "~ehmry";
  inputs.src-opusenc-master.repo = "nim_opusenc";
  inputs.src-opusenc-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-opusenc-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opusenc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-opusenc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}