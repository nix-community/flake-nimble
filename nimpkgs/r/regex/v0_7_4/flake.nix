{
  description = ''Linear time regex matching'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-regex-v0_7_4.flake = false;
  inputs.src-regex-v0_7_4.type = "github";
  inputs.src-regex-v0_7_4.owner = "nitely";
  inputs.src-regex-v0_7_4.repo = "nim-regex";
  inputs.src-regex-v0_7_4.ref = "refs/tags/v0.7.4";
  inputs.src-regex-v0_7_4.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."unicodedb".type = "github";
  # inputs."unicodedb".owner = "riinr";
  # inputs."unicodedb".repo = "flake-nimble";
  # inputs."unicodedb".ref = "flake-pinning";
  # inputs."unicodedb".dir = "nimpkgs/u/unicodedb";
  # inputs."unicodedb".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."unicodedb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."unicodeplus".type = "github";
  # inputs."unicodeplus".owner = "riinr";
  # inputs."unicodeplus".repo = "flake-nimble";
  # inputs."unicodeplus".ref = "flake-pinning";
  # inputs."unicodeplus".dir = "nimpkgs/u/unicodeplus";
  # inputs."unicodeplus".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."unicodeplus".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-regex-v0_7_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-regex-v0_7_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-regex-v0_7_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}