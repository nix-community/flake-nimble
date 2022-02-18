{
  description = ''Unicode Character Database (UCD) access for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-unicodedb-v0_2_5.flake = false;
  inputs.src-unicodedb-v0_2_5.type = "github";
  inputs.src-unicodedb-v0_2_5.owner = "nitely";
  inputs.src-unicodedb-v0_2_5.repo = "nim-unicodedb";
  inputs.src-unicodedb-v0_2_5.ref = "refs/tags/v0.2.5";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-unicodedb-v0_2_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unicodedb-v0_2_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-unicodedb-v0_2_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}