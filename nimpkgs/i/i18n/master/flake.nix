{
  description = ''Bring a gettext-like internationalisation module to Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-i18n-master.flake = false;
  inputs.src-i18n-master.type = "github";
  inputs.src-i18n-master.owner = "Parashurama";
  inputs.src-i18n-master.repo = "nim-i18n";
  inputs.src-i18n-master.ref = "refs/heads/master";
  inputs.src-i18n-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-i18n-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-i18n-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-i18n-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}