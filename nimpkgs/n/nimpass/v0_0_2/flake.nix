{
  description = ''quickly generate cryptographically secure passwords and phrases'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimpass-v0_0_2.flake = false;
  inputs.src-nimpass-v0_0_2.type = "github";
  inputs.src-nimpass-v0_0_2.owner = "xioren";
  inputs.src-nimpass-v0_0_2.repo = "NimPass";
  inputs.src-nimpass-v0_0_2.ref = "refs/tags/v0.0.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimpass-v0_0_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpass-v0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimpass-v0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}