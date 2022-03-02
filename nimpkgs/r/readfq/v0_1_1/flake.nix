{
  description = ''Wrapper for Heng Li's kseq'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-readfq-v0_1_1.flake = false;
  inputs.src-readfq-v0_1_1.type = "github";
  inputs.src-readfq-v0_1_1.owner = "andreas-wilm";
  inputs.src-readfq-v0_1_1.repo = "nimreadfq";
  inputs.src-readfq-v0_1_1.ref = "refs/tags/v0.1.1";
  inputs.src-readfq-v0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."zip".type = "github";
  # inputs."zip".owner = "riinr";
  # inputs."zip".repo = "flake-nimble";
  # inputs."zip".ref = "flake-pinning";
  # inputs."zip".dir = "nimpkgs/z/zip";
  # inputs."zip".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."zip".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-readfq-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-readfq-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-readfq-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}