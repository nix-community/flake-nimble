{
  description = ''System libraries for the Genode Operating System Framework'';
  inputs.src-genode-v19_05.flake = false;
  inputs.src-genode-v19_05.type = "other";
  inputs.src-genode-v19_05.owner = "~ehmry";
  inputs.src-genode-v19_05.repo = "nim_genode";
  inputs.src-genode-v19_05.ref = "refs/tags/v19.05";
  
  outputs = { self, nixpkgs, src-genode-v19_05, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-genode-v19_05;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-genode-v19_05"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}