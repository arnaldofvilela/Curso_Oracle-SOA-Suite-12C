xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://www.middleware4you.com/pessoa";
(:: import schema at "../../Servicos/External/XSD/Pessoa.xsd" ::)

declare variable $nome as xs:string external;

declare function local:func($nome as xs:string) as element() (:: schema-element(ns1:ListarPessoaRequest) ::) {
    <ns1:ListarPessoaRequest>
        <ns1:nome>{fn:data($nome)}</ns1:nome>
    </ns1:ListarPessoaRequest>
};

local:func($nome)
