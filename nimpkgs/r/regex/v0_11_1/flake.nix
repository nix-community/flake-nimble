{
  description = ''Linear time regex matching'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-regex-v0_11_1.flake = false;
  inputs.src-regex-v0_11_1.type = "github";
  inputs.src-regex-v0_11_1.owner = "nitely";
  inputs.src-regex-v0_11_1.repo = "nim-regex";
  inputs.src-regex-v0_11_1.ref = "refs/tags/v0.11.1";
  inputs.src-regex-v0_11_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
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

  outputs = { self, nixpkgs, flakeNimbleLib, src-regex-v0_11_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-regex-v0_11_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-regex-v0_11_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}