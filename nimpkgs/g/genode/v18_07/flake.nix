{
  description = ''System libraries for the Genode Operating System Framework'';
  inputs.src-genode-v18_07.flake = false;
  inputs.src-genode-v18_07.type = "other";
  inputs.src-genode-v18_07.owner = "~ehmry";
  inputs.src-genode-v18_07.repo = "nim_genode";
  inputs.src-genode-v18_07.ref = "refs/tags/v18.07";
  
  outputs = { self, nixpkgs, src-genode-v18_07, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-genode-v18_07;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-genode-v18_07"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}