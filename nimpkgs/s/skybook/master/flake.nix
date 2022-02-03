{
  description = ''Light weight bookmark manager(delicious alternative)'';
  inputs.src-skybook-master.flake = false;
  inputs.src-skybook-master.type = "github";
  inputs.src-skybook-master.owner = "muxueqz";
  inputs.src-skybook-master.repo = "skybook";
  inputs.src-skybook-master.ref = "refs/heads/master";
  
  
  inputs."jester".url = "path:../../../j/jester";
  inputs."jester".type = "github";
  inputs."jester".owner = "riinr";
  inputs."jester".repo = "flake-nimble";
  inputs."jester".ref = "flake-pinning";
  inputs."jester".dir = "nimpkgs/j/jester";

  outputs = { self, nixpkgs, src-skybook-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-skybook-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-skybook-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}