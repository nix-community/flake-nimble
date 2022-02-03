{
  description = ''The SHIORI Message charset convert utility'';
  inputs.src-shiori_charset_convert-master.flake = false;
  inputs.src-shiori_charset_convert-master.type = "github";
  inputs.src-shiori_charset_convert-master.owner = "Narazaka";
  inputs.src-shiori_charset_convert-master.repo = "shiori_charset_convert-nim";
  inputs.src-shiori_charset_convert-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-shiori_charset_convert-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shiori_charset_convert-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-shiori_charset_convert-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}