{
  description = ''Unicode Character Database (UCD) access for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-unicodedb-v0_2_4.flake = false;
  inputs.src-unicodedb-v0_2_4.type = "github";
  inputs.src-unicodedb-v0_2_4.owner = "nitely";
  inputs.src-unicodedb-v0_2_4.repo = "nim-unicodedb";
  inputs.src-unicodedb-v0_2_4.ref = "refs/tags/v0.2.4";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-unicodedb-v0_2_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unicodedb-v0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-unicodedb-v0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}