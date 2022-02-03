{
  description = ''The SHIORI Message charset convert utility'';
  inputs.src-shiori_charset_convert-v1_0_0.flake = false;
  inputs.src-shiori_charset_convert-v1_0_0.type = "github";
  inputs.src-shiori_charset_convert-v1_0_0.owner = "Narazaka";
  inputs.src-shiori_charset_convert-v1_0_0.repo = "shiori_charset_convert-nim";
  inputs.src-shiori_charset_convert-v1_0_0.ref = "refs/tags/v1.0.0";
  
  outputs = { self, nixpkgs, src-shiori_charset_convert-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shiori_charset_convert-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-shiori_charset_convert-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}