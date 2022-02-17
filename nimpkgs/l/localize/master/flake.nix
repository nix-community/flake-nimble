{
  description = ''Compile time localization for applications'';
  inputs.src-localize-master.flake = false;
  inputs.src-localize-master.type = "github";
  inputs.src-localize-master.owner = "levovix0";
  inputs.src-localize-master.repo = "localize";
  inputs.src-localize-master.ref = "refs/heads/master";
  
  
  inputs."fusion".type = "github";
  inputs."fusion".owner = "riinr";
  inputs."fusion".repo = "flake-nimble";
  inputs."fusion".ref = "flake-pinning";
  inputs."fusion".dir = "nimpkgs/f/fusion";

  outputs = { self, nixpkgs, src-localize-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-localize-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-localize-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}