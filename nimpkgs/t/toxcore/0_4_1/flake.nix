{
  description = ''C Tox core wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-toxcore-0_4_1.flake = false;
  inputs.src-toxcore-0_4_1.type = "other";
  inputs.src-toxcore-0_4_1.owner = "~ehmry";
  inputs.src-toxcore-0_4_1.repo = "nim_tox";
  inputs.src-toxcore-0_4_1.ref = "refs/tags/0.4.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-toxcore-0_4_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-toxcore-0_4_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-toxcore-0_4_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}