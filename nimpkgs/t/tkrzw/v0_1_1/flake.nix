{
  description = ''Wrappers over the Tkrzw Database Manager C++ library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-tkrzw-v0_1_1.flake = false;
  inputs.src-tkrzw-v0_1_1.type = "other";
  inputs.src-tkrzw-v0_1_1.owner = "~ehmry";
  inputs.src-tkrzw-v0_1_1.repo = "nim-tkrzw";
  inputs.src-tkrzw-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-tkrzw-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tkrzw-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tkrzw-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}