{
  description = ''mctranslog - Transaction Log Package'';
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

  outputs = { self, nixpkgs, src-mctranslog-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mctranslog-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mctranslog-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}