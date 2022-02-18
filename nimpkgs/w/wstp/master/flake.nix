{
  description = ''Nim bindings for WSTP'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-wstp-master.flake = false;
  inputs.src-wstp-master.type = "github";
  inputs.src-wstp-master.owner = "oskca";
  inputs.src-wstp-master.repo = "nim-wstp";
  inputs.src-wstp-master.ref = "refs/heads/master";
  
  
  inputs."c2nim".type = "github";
  inputs."c2nim".owner = "riinr";
  inputs."c2nim".repo = "flake-nimble";
  inputs."c2nim".ref = "flake-pinning";
  inputs."c2nim".dir = "nimpkgs/c/c2nim";

  outputs = { self, nixpkgs, flakeNimbleLib, src-wstp-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wstp-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-wstp-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}