{
  description = ''A nimterop wrapper for the dav1d portable-and-fast AV1 video decoder'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-dav1d-master.flake = false;
  inputs.src-dav1d-master.type = "github";
  inputs.src-dav1d-master.owner = "capocasa";
  inputs.src-dav1d-master.repo = "nim-dav1d";
  inputs.src-dav1d-master.ref = "refs/heads/master";
  inputs.src-dav1d-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."https://github.com/capocasa/nimterop".type = "github";
  # inputs."https://github.com/capocasa/nimterop".owner = "riinr";
  # inputs."https://github.com/capocasa/nimterop".repo = "flake-nimble";
  # inputs."https://github.com/capocasa/nimterop".ref = "flake-pinning";
  # inputs."https://github.com/capocasa/nimterop".dir = "nimpkgs/h/https://github.com/capocasa/nimterop";
  # inputs."https://github.com/capocasa/nimterop".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/capocasa/nimterop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-dav1d-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dav1d-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dav1d-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}