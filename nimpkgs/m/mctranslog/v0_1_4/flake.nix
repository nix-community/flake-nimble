{
  description = ''mctranslog - Transaction Log Package'';
  inputs.src-mctranslog-v0_1_4.flake = false;
  inputs.src-mctranslog-v0_1_4.type = "github";
  inputs.src-mctranslog-v0_1_4.owner = "abbeymart";
  inputs.src-mctranslog-v0_1_4.repo = "mctranslog";
  inputs.src-mctranslog-v0_1_4.ref = "refs/tags/v0.1.4";
  
  
  inputs."mcresponse".url = "path:../../../m/mcresponse";
  inputs."mcresponse".type = "github";
  inputs."mcresponse".owner = "riinr";
  inputs."mcresponse".repo = "flake-nimble";
  inputs."mcresponse".ref = "flake-pinning";
  inputs."mcresponse".dir = "nimpkgs/m/mcresponse";

  
  inputs."mcdb".url = "path:../../../m/mcdb";
  inputs."mcdb".type = "github";
  inputs."mcdb".owner = "riinr";
  inputs."mcdb".repo = "flake-nimble";
  inputs."mcdb".ref = "flake-pinning";
  inputs."mcdb".dir = "nimpkgs/m/mcdb";

  outputs = { self, nixpkgs, src-mctranslog-v0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mctranslog-v0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mctranslog-v0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}