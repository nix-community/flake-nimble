{
  description = ''System libraries for the Genode Operating System Framework'';
  inputs.src-genode-v18_11_1.flake = false;
  inputs.src-genode-v18_11_1.type = "other";
  inputs.src-genode-v18_11_1.owner = "~ehmry";
  inputs.src-genode-v18_11_1.repo = "nim_genode";
  inputs.src-genode-v18_11_1.ref = "refs/tags/v18.11.1";
  
  outputs = { self, nixpkgs, src-genode-v18_11_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-genode-v18_11_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-genode-v18_11_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}