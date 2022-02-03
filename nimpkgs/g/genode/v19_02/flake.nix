{
  description = ''System libraries for the Genode Operating System Framework'';
  inputs.src-genode-v19_02.flake = false;
  inputs.src-genode-v19_02.type = "other";
  inputs.src-genode-v19_02.owner = "~ehmry";
  inputs.src-genode-v19_02.repo = "nim_genode";
  inputs.src-genode-v19_02.ref = "refs/tags/v19.02";
  
  outputs = { self, nixpkgs, src-genode-v19_02, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-genode-v19_02;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-genode-v19_02"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}