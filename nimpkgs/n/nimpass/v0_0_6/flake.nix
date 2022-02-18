{
  description = ''quickly generate cryptographically secure passwords and phrases'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimpass-v0_0_6.flake = false;
  inputs.src-nimpass-v0_0_6.type = "github";
  inputs.src-nimpass-v0_0_6.owner = "xioren";
  inputs.src-nimpass-v0_0_6.repo = "NimPass";
  inputs.src-nimpass-v0_0_6.ref = "refs/tags/v0.0.6";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimpass-v0_0_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpass-v0_0_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimpass-v0_0_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}