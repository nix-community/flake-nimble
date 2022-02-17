{
  description = ''Generate and parse Mac OS X .plist files in Nim.'';
  inputs.src-plists-master.flake = false;
  inputs.src-plists-master.type = "github";
  inputs.src-plists-master.owner = "yglukhov";
  inputs.src-plists-master.repo = "plists";
  inputs.src-plists-master.ref = "refs/heads/master";
  
  
  inputs."darwin".type = "github";
  inputs."darwin".owner = "riinr";
  inputs."darwin".repo = "flake-nimble";
  inputs."darwin".ref = "flake-pinning";
  inputs."darwin".dir = "nimpkgs/d/darwin";

  outputs = { self, nixpkgs, src-plists-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-plists-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-plists-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}