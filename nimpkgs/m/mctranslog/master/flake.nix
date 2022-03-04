{
  description = ''mctranslog - Transaction Log Package'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-mctranslog-master.flake = false;
  inputs.src-mctranslog-master.type = "github";
  inputs.src-mctranslog-master.owner = "abbeymart";
  inputs.src-mctranslog-master.repo = "mctranslog";
  inputs.src-mctranslog-master.ref = "refs/heads/master";
  inputs.src-mctranslog-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."mcresponse".type = "github";
  inputs."mcresponse".owner = "riinr";
  inputs."mcresponse".repo = "flake-nimble";
  inputs."mcresponse".ref = "flake-pinning";
  inputs."mcresponse".dir = "nimpkgs/m/mcresponse";
  inputs."mcresponse".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mcresponse".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  inputs."mcdb".type = "github";
  inputs."mcdb".owner = "riinr";
  inputs."mcdb".repo = "flake-nimble";
  inputs."mcdb".ref = "flake-pinning";
  inputs."mcdb".dir = "nimpkgs/m/mcdb";
  inputs."mcdb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mcdb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-mctranslog-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mctranslog-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mctranslog-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}