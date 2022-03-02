{
  description = ''bundle your assets to a nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimassets-master.flake = false;
  inputs.src-nimassets-master.type = "github";
  inputs.src-nimassets-master.owner = "xmonader";
  inputs.src-nimassets-master.repo = "nimassets";
  inputs.src-nimassets-master.ref = "refs/heads/master";
  inputs.src-nimassets-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."zstd".type = "github";
  # inputs."zstd".owner = "riinr";
  # inputs."zstd".repo = "flake-nimble";
  # inputs."zstd".ref = "flake-pinning";
  # inputs."zstd".dir = "nimpkgs/z/zstd";
  # inputs."zstd".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."zstd".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimassets-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimassets-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimassets-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}