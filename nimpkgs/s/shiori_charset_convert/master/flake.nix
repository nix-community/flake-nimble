{
  description = ''The SHIORI Message charset convert utility'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-shiori_charset_convert-master.flake = false;
  inputs.src-shiori_charset_convert-master.type = "github";
  inputs.src-shiori_charset_convert-master.owner = "Narazaka";
  inputs.src-shiori_charset_convert-master.repo = "shiori_charset_convert-nim";
  inputs.src-shiori_charset_convert-master.ref = "refs/heads/master";
  inputs.src-shiori_charset_convert-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-shiori_charset_convert-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shiori_charset_convert-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-shiori_charset_convert-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}