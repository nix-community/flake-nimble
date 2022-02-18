{
  description = ''quickly generate cryptographically secure passwords and phrases'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimpass-v0_1_1.flake = false;
  inputs.src-nimpass-v0_1_1.type = "github";
  inputs.src-nimpass-v0_1_1.owner = "xioren";
  inputs.src-nimpass-v0_1_1.repo = "NimPass";
  inputs.src-nimpass-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimpass-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpass-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimpass-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}