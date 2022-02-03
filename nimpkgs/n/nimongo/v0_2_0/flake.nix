{
  description = ''MongoDB driver in pure Nim language with synchronous and asynchronous I/O support'';
  inputs.src-nimongo-v0_2_0.flake = false;
  inputs.src-nimongo-v0_2_0.type = "github";
  inputs.src-nimongo-v0_2_0.owner = "SSPkrolik";
  inputs.src-nimongo-v0_2_0.repo = "nimongo";
  inputs.src-nimongo-v0_2_0.ref = "refs/tags/v0.2.0";
  
  
  inputs."scram".url = "path:../../../s/scram";
  inputs."scram".type = "github";
  inputs."scram".owner = "riinr";
  inputs."scram".repo = "flake-nimble";
  inputs."scram".ref = "flake-pinning";
  inputs."scram".dir = "nimpkgs/s/scram";

  outputs = { self, nixpkgs, src-nimongo-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimongo-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimongo-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}