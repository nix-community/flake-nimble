{
  description = ''Library implementing a variation of the Simple And Efficient Data Encryption Algorithm (INTERNATIONAL JOURNAL OF SCIENTIFIC & TECHNOLOGY RESEARCH VOLUME 8, ISSUE 12, DECEMBER 2019 ISSN 2277-8616)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-libsaedea-master.flake = false;
  inputs.src-libsaedea-master.type = "github";
  inputs.src-libsaedea-master.owner = "m33m33";
  inputs.src-libsaedea-master.repo = "libsaedea";
  inputs.src-libsaedea-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libsaedea-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libsaedea-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libsaedea-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}