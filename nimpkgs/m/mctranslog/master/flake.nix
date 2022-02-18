{
  description = ''mctranslog - Transaction Log Package'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-mctranslog-master.flake = false;
  inputs.src-mctranslog-master.type = "github";
  inputs.src-mctranslog-master.owner = "abbeymart";
  inputs.src-mctranslog-master.repo = "mctranslog";
  inputs.src-mctranslog-master.ref = "refs/heads/master";
  
  
  inputs."mcresponse".type = "github";
  inputs."mcresponse".owner = "riinr";
  inputs."mcresponse".repo = "flake-nimble";
  inputs."mcresponse".ref = "flake-pinning";
  inputs."mcresponse".dir = "nimpkgs/m/mcresponse";

  
  inputs."mcdb".type = "github";
  inputs."mcdb".owner = "riinr";
  inputs."mcdb".repo = "flake-nimble";
  inputs."mcdb".ref = "flake-pinning";
  inputs."mcdb".dir = "nimpkgs/m/mcdb";

  outputs = { self, nixpkgs, flakeNimbleLib, src-mctranslog-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mctranslog-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mctranslog-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}