{
  description = ''Duplicate files finder'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-ndf-master.flake = false;
  inputs.src-ndf-master.type = "github";
  inputs.src-ndf-master.owner = "rustomax";
  inputs.src-ndf-master.repo = "ndf";
  inputs.src-ndf-master.ref = "refs/heads/master";
  inputs.src-ndf-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."docopt".type = "github";
  # inputs."docopt".owner = "riinr";
  # inputs."docopt".repo = "flake-nimble";
  # inputs."docopt".ref = "flake-pinning";
  # inputs."docopt".dir = "nimpkgs/d/docopt";
  # inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."murmurhash".type = "github";
  # inputs."murmurhash".owner = "riinr";
  # inputs."murmurhash".repo = "flake-nimble";
  # inputs."murmurhash".ref = "flake-pinning";
  # inputs."murmurhash".dir = "nimpkgs/m/murmurhash";
  # inputs."murmurhash".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."murmurhash".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-ndf-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ndf-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ndf-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}