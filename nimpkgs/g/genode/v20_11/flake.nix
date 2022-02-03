{
  description = ''System libraries for the Genode Operating System Framework'';
  inputs.src-genode-v20_11.flake = false;
  inputs.src-genode-v20_11.type = "other";
  inputs.src-genode-v20_11.owner = "~ehmry";
  inputs.src-genode-v20_11.repo = "nim_genode";
  inputs.src-genode-v20_11.ref = "refs/tags/v20.11";
  
  outputs = { self, nixpkgs, src-genode-v20_11, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-genode-v20_11;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-genode-v20_11"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}