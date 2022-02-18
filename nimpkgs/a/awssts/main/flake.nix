{
  description = ''AWS Security Token Service API in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-awssts-main.flake = false;
  inputs.src-awssts-main.type = "github";
  inputs.src-awssts-main.owner = "ThomasTJdev";
  inputs.src-awssts-main.repo = "nim_awsSTS";
  inputs.src-awssts-main.ref = "refs/heads/main";
  
  
  inputs."sigv4".type = "github";
  inputs."sigv4".owner = "riinr";
  inputs."sigv4".repo = "flake-nimble";
  inputs."sigv4".ref = "flake-pinning";
  inputs."sigv4".dir = "nimpkgs/s/sigv4";

  outputs = { self, nixpkgs, flakeNimbleLib, src-awssts-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-awssts-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-awssts-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}