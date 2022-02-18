{
  description = ''utf-8 string'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ustring-0_3_0.flake = false;
  inputs.src-ustring-0_3_0.type = "github";
  inputs.src-ustring-0_3_0.owner = "rokups";
  inputs.src-ustring-0_3_0.repo = "nim-ustring";
  inputs.src-ustring-0_3_0.ref = "refs/tags/0.3.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ustring-0_3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ustring-0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ustring-0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}