{
  description = ''mctranslog - Transaction Log Package'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-mctranslog-v0_1_4.flake = false;
  inputs.src-mctranslog-v0_1_4.type = "github";
  inputs.src-mctranslog-v0_1_4.owner = "abbeymart";
  inputs.src-mctranslog-v0_1_4.repo = "mctranslog";
  inputs.src-mctranslog-v0_1_4.ref = "refs/tags/v0.1.4";
  inputs.src-mctranslog-v0_1_4.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."mcresponse".type = "github";
  # inputs."mcresponse".owner = "riinr";
  # inputs."mcresponse".repo = "flake-nimble";
  # inputs."mcresponse".ref = "flake-pinning";
  # inputs."mcresponse".dir = "nimpkgs/m/mcresponse";
  # inputs."mcresponse".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."mcresponse".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."mcdb".type = "github";
  # inputs."mcdb".owner = "riinr";
  # inputs."mcdb".repo = "flake-nimble";
  # inputs."mcdb".ref = "flake-pinning";
  # inputs."mcdb".dir = "nimpkgs/m/mcdb";
  # inputs."mcdb".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."mcdb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-mctranslog-v0_1_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mctranslog-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mctranslog-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}