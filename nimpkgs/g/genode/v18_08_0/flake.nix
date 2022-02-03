{
  description = ''System libraries for the Genode Operating System Framework'';
  inputs.src-genode-v18_08_0.flake = false;
  inputs.src-genode-v18_08_0.type = "other";
  inputs.src-genode-v18_08_0.owner = "~ehmry";
  inputs.src-genode-v18_08_0.repo = "nim_genode";
  inputs.src-genode-v18_08_0.ref = "refs/tags/v18.08.0";
  
  outputs = { self, nixpkgs, src-genode-v18_08_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-genode-v18_08_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-genode-v18_08_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}