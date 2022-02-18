{
  description = ''AWS Security Token Service API in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-awssts-v1_0_0.flake = false;
  inputs.src-awssts-v1_0_0.type = "github";
  inputs.src-awssts-v1_0_0.owner = "ThomasTJdev";
  inputs.src-awssts-v1_0_0.repo = "nim_awsSTS";
  inputs.src-awssts-v1_0_0.ref = "refs/tags/v1.0.0";
  
  
  inputs."sigv4".type = "github";
  inputs."sigv4".owner = "riinr";
  inputs."sigv4".repo = "flake-nimble";
  inputs."sigv4".ref = "flake-pinning";
  inputs."sigv4".dir = "nimpkgs/s/sigv4";

  outputs = { self, nixpkgs, flakeNimbleLib, src-awssts-v1_0_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-awssts-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-awssts-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}