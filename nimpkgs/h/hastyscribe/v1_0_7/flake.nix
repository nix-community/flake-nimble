{
  description = ''Self-contained markdown compiler generating self-contained HTML documents'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-hastyscribe-v1_0_7.flake = false;
  inputs.src-hastyscribe-v1_0_7.type = "github";
  inputs.src-hastyscribe-v1_0_7.owner = "h3rald";
  inputs.src-hastyscribe-v1_0_7.repo = "hastyscribe";
  inputs.src-hastyscribe-v1_0_7.ref = "refs/tags/v1.0.7";
  
  
  inputs."nimrod".type = "github";
  inputs."nimrod".owner = "riinr";
  inputs."nimrod".repo = "flake-nimble";
  inputs."nimrod".ref = "flake-pinning";
  inputs."nimrod".dir = "nimpkgs/n/nimrod";

  outputs = { self, nixpkgs, flakeNimbleLib, src-hastyscribe-v1_0_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hastyscribe-v1_0_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hastyscribe-v1_0_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}