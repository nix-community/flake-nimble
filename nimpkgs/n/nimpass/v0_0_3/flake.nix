{
  description = ''quickly generate cryptographically secure passwords and phrases'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimpass-v0_0_3.flake = false;
  inputs.src-nimpass-v0_0_3.type = "github";
  inputs.src-nimpass-v0_0_3.owner = "xioren";
  inputs.src-nimpass-v0_0_3.repo = "NimPass";
  inputs.src-nimpass-v0_0_3.ref = "refs/tags/v0.0.3";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimpass-v0_0_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpass-v0_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimpass-v0_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}